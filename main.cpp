#include <iostream>
#include <vector>
using namespace std;

struct Player {
    string playerName;
    int playerJersey;
    int playerRating;
};
void initialize(vector<Player>& v){
    for(int i = 0; i < v.size(); i++){
        string name;
        int jersey;
        int rating;
        cout << "Enter player " << i + 1 << "'s name:" << endl;
        cin >> name;
        v.at(i).playerName = name;

        cout << "Enter player " << i + 1 << "'s jersey number:" << endl;
        cin >> jersey;
        v.at(i).playerJersey = jersey;

        cout << "Enter player " << i + 1 << "'s rating:" << endl;
        cin >> rating;
        v.at(i).playerRating = rating;

        cout << endl;
    }
}
void output(const vector<Player>& v){
    cout << "ROSTER" << endl;
    for (int i = 0; i < v.size(); ++i) {
        cout << "Player " << i + 1 << " -- Name: " << v.at(i).playerName <<" -- Jersey number: "
             << v.at(i).playerJersey << ", Rating: " << v.at(i).playerRating << endl;
    }
    cout << endl;
}
void addPlayer(vector<Player>& v, Player newPlayer = {"Joe", 0, 0}){
    cout << "Enter the new player's name:" << endl;
    cin >> newPlayer.playerName;

    cout << "Enter a new player's jersey number:" << endl;
    cin >> newPlayer.playerJersey;

    cout << "Enter the player's rating:" << endl;
    cin >> newPlayer.playerRating;

    v.push_back(newPlayer);

    cout << endl;
}
void deletePlayer(vector<Player>& v, int playerJersey = 0) {
    //user inputs the jersey number
    bool found = false;
    cout << "Enter a jersey number:" << endl;
    cin >> playerJersey;

    //find the player using her/his jersey number
    for (int i = 0; i < v.size(); ++i) {
        if (playerJersey == v.at(i).playerJersey) {
            playerJersey = i;
            found = true;

            for (int j = 0; j < v.size() - 1; ++j) {
                if (j >= playerJersey) {
                    v.at(j) = v.at(j + 1);
                }
            }
            v.pop_back();
            cout << endl;
        }
    }
    if(!found){
        cout << "Jersey number not found\n" << endl;
    }
}

void updateRating(vector<Player>& v, int playerJersey = 0, int newRating = 0){
    //user inputs jersey and new rating
    cout << "Enter a jersey number:" << endl;
    cin >> playerJersey;

    cout << "Enter a new rating for player:" << endl;
    cin >> newRating;

    for (int i = 0; i < v.size(); ++i) {
        if (v.at(i).playerJersey == playerJersey) {
            v.at(i).playerRating = newRating;
        }
    }
    cout << endl;
}
void aboveRating(const vector<Player>& v, int minRating = 0){
    cout << "Enter a rating:" << endl;
    cin >> minRating;

    cout << "ABOVE " << minRating << endl;
    for (int i = 0; i < v.size(); ++i) {
        if (v.at(i).playerRating > minRating) {
            cout << "Player " << i + 1 <<
            " -- Name: " << v.at(i).playerName <<
            " -- Jersey number: " << v.at(i).playerJersey <<
            ", Rating: " << v.at(i).playerRating << endl;
        }
    }
    cout << endl;
}

int main() {
    int rosterSize;
    cout << "Enter the number of players for your roster" << endl;
    cin >> rosterSize;
    vector<Player> roster(rosterSize);

    initialize(roster);
    output(roster);
    aboveRating(roster);

    unsigned int i;
    char menu;

    do {
        cout << "MENU" << endl;
        cout << "a - Add player" << endl;
        cout << "d - Remove player" << endl;
        cout << "u - Update player rating" << endl;
        cout << "r - Output players above a rating" << endl;
        cout << "o - Output roster" << endl;
        cout << "q - Quit" << endl << endl;

        cout << "Choose an option:" << endl;
        cin >> menu;

        //Add
        if (menu == 'a') {
            addPlayer(roster);
        }

        //Delete
        else if (menu == 'd') {
            deletePlayer(roster);
        }

        //Update
        else if (menu == 'u') {
            updateRating(roster);
        }

        // > Rating
        else if (menu == 'r') {
            aboveRating(roster);
        }

        else if (menu == 'o'){
            output(roster);
        }
    } while(menu != 'q');

    return 0;
}
