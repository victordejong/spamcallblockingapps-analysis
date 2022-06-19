.class public final Le/a/i/e/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/a/a/g;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/g;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/f;->a:Le/a/i/e/a/a/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/i/e/a/a/f;->a:Le/a/i/e/a/a/g;

    .line 3
    iget-boolean p2, p1, Le/a/i/e/a/a/g;->n:Z

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Le/a/i/e/a/a/g;->Kj()V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
