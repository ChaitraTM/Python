import random
import time

# ---------------- GAME RULES ---------------- #

rock = 1
paper = 2
scissors = 3

names = {
    1: "Rock",
    2: "Paper",
    3: "Scissors"
}

# Who beats whom
rules = {
    rock: scissors,      # rock beats scissors
    paper: rock,         # paper beats rock
    scissors: paper      # scissors beats paper
}

player_score = 0
computer_score = 0

# ---------------- START GAME ---------------- #

def start():
    print("\n🎮 Welcome to Rock Paper Scissors Game!")
    
    while game():
        pass

    scores()

# ---------------- GAME LOOP ---------------- #

def game():
    player = move()
    computer = random.randint(1, 3)

    result(player, computer)

    return play_again()

# ---------------- PLAYER MOVE ---------------- #

def move():
    while True:
        try:
            player = int(input("\nEnter choice (1-Rock, 2-Paper, 3-Scissors): "))

            if player in [1, 2, 3]:
                return player

        except ValueError:
            pass

        print("Invalid input! Please enter 1, 2, or 3.")

# ---------------- RESULT ---------------- #

def result(player, computer):
    global player_score, computer_score

    print("\nYou chose:", names[player])
    time.sleep(1)

    print("Computer is choosing...")
    time.sleep(1)

    print("Computer chose:", names[computer])
    time.sleep(0.5)

    print()

    if player == computer:
        print("It's a Tie!")

    elif rules[player] == computer:
        print("You Win!")
        player_score += 1

    else:
        print("Computer Wins!")
        computer_score += 1

# ---------------- PLAY AGAIN ---------------- #

def play_again():
    answer = input("\nDo you want to play again? (y/n): ")
    return answer.lower() in ["y", "yes"]

# ---------------- SCOREBOARD ---------------- #

def scores():
    print("\nFINAL SCORES")
    print("Player:", player_score)
    print("Computer:", computer_score)

    if player_score > computer_score:
        print("Overall Winner: Player")
    elif player_score < computer_score:
        print("Overall Winner: Computer")
    else:
        print("Match Draw")

# ---------------- MAIN ---------------- #

if __name__ == "__main__":
    start()