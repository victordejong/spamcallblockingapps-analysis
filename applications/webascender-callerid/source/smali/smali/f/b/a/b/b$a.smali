.class Lf/b/a/b/b$a;
.super Lf/b/a/b/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lf/b/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lf/b/a/b/b$c;Lf/b/a/b/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lf/b/a/b/b$e;-><init>(Lf/b/a/b/b$c;Lf/b/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method b(Lf/b/a/b/b$c;)Lf/b/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lf/b/a/b/b$c;->i:Lf/b/a/b/b$c;

    return-object p1
.end method

.method d(Lf/b/a/b/b$c;)Lf/b/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lf/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lf/b/a/b/b$c;->h:Lf/b/a/b/b$c;

    return-object p1
.end method
