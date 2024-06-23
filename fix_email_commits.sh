git filter-branch --env-filter '
WRONG_EMAIL="rushatrai@gmail.com"
NEW_NAME="Rushat"
NEW_EMAIL="19189325+rushatrai@users.noreply.github.com"

if [ "$GIT_COMMITTER_EMAIL" = "$WRONG_EMAIL" ]
then
    GIT_COMMITTER_NAME="$NEW_NAME"
    GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$WRONG_EMAIL" ]
then
    GIT_AUTHOR_NAME="$NEW_NAME"
    GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
