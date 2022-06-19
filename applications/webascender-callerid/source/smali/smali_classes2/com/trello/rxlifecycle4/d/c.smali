.class public Lcom/trello/rxlifecycle4/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Lcom/trello/rxlifecycle4/d/a;",
            "Lcom/trello/rxlifecycle4/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "Lcom/trello/rxlifecycle4/d/b;",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/trello/rxlifecycle4/d/c$a;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/d/c$a;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/d/c;->a:Li/c/b0/d/o;

    .line 2
    new-instance v0, Lcom/trello/rxlifecycle4/d/c$b;

    invoke-direct {v0}, Lcom/trello/rxlifecycle4/d/c$b;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle4/d/c;->b:Li/c/b0/d/o;

    return-void
.end method

.method public static a(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/v<",
            "Lcom/trello/rxlifecycle4/d/a;",
            ">;)",
            "Lcom/trello/rxlifecycle4/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/trello/rxlifecycle4/d/c;->a:Li/c/b0/d/o;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/c;->b(Li/c/b0/b/v;Li/c/b0/d/o;)Lcom/trello/rxlifecycle4/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/v<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;)",
            "Lcom/trello/rxlifecycle4/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/trello/rxlifecycle4/d/c;->b:Li/c/b0/d/o;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle4/c;->b(Li/c/b0/b/v;Li/c/b0/d/o;)Lcom/trello/rxlifecycle4/b;

    move-result-object p0

    return-object p0
.end method
