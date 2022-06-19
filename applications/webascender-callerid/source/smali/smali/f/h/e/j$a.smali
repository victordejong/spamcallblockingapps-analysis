.class Lf/h/e/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/h/e/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/e/j;->h([Lf/h/i/b$f;I)Lf/h/i/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/h/e/j$c<",
        "Lf/h/i/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lf/h/e/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf/h/i/b$f;

    invoke-virtual {p0, p1}, Lf/h/e/j$a;->c(Lf/h/i/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lf/h/i/b$f;

    invoke-virtual {p0, p1}, Lf/h/e/j$a;->d(Lf/h/i/b$f;)Z

    move-result p1

    return p1
.end method

.method public c(Lf/h/i/b$f;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf/h/i/b$f;->d()I

    move-result p1

    return p1
.end method

.method public d(Lf/h/i/b$f;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf/h/i/b$f;->e()Z

    move-result p1

    return p1
.end method
