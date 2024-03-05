
# Task 1: Extract Nouns for Classes
# Nouns:
# - Game
# - Player
# - MathQuestion

# Task 2: Write their roles

# 1. Game Class:
#    - Role: Manages the flow of the game, including the game loop where players take turns, and keeps track of players' scores and lives.
#    - Relevant Information: Players, current math question, players' scores and lives.
#    - Initialization: Needs to be initialized with instances of Player class.
#    - Public Methods: 
#      - `start_game`: Starts the game loop.
#      - `game_over`: Checks if the game is over.
#      - `display_score`: Displays scores of both players.

# 2. Player Class:
#    - Role: Represents each player in the game, keeping track of their scores and lives.
#    - Relevant Information: Player's name, score, lives.
#    - Initialization: Needs to be initialized with a name.
#    - Public Methods:
#      - `answer_question`: Takes input for the answer to a question and updates the score and lives accordingly.
#      - `lost_life`: Decrements the life count of the player.
#      - `display_info`: Displays player's name, score, and lives.

# 3. MathQuestion Class:
#    - Role: Generates simple addition math questions for the players.
#    - Relevant Information: Two random numbers for the question.
#    - Initialization: Generates random numbers for the question.
#    - Public Methods:
#      - `generate_question`: Generates a new addition question with random numbers.
#      - `check_answer`: Checks if the given answer is correct.

# Further considerations:
# - The Game class will contain the game loop.
# - The Game class will manage who the current_player is.
# - The Player class will handle user I/O, while the MathQuestion class will not have any.
