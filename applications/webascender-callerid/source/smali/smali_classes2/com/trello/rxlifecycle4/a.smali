.class final Lcom/trello/rxlifecycle4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Ljava/lang/Object;",
            "Li/c/b0/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/trello/rxlifecycle4/a$a;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/a$a;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/a;->a:Li/c/b0/d/o;

    .line 2
    new-instance v0, Lcom/trello/rxlifecycle4/a$b;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/a$b;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/a;->b:Li/c/b0/d/p;

    .line 3
    new-instance v0, Lcom/trello/rxlifecycle4/a$c;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/a$c;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/a;->c:Li/c/b0/d/o;

    return-void
.end method
