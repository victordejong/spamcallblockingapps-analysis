.class public final Le/a/f4/b/h/f$a;
.super Lp3/a/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/b/h/f;->a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/w$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp3/a/d;Lp3/a/p0;Lp3/a/c;Lp3/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/f4/b/h/f$a;->b:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p5}, Lp3/a/w$a;-><init>(Lp3/a/f;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    const-string v0, "--> "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f4/b/h/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lp3/a/w;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/f4/b/h/f$a$a;

    invoke-direct {v0, p0, p1}, Le/a/f4/b/h/f$a$a;-><init>(Le/a/f4/b/h/f$a;Lp3/a/f$a;)V

    .line 2
    invoke-super {p0, v0, p2}, Lp3/a/w;->e(Lp3/a/f$a;Lp3/a/o0;)V

    return-void
.end method
