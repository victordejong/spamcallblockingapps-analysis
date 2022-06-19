.class public final Le/a/f4/b/h/f$a$a;
.super Lp3/a/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/b/h/f$a;->e(Lp3/a/f$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/x<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/f4/b/h/f$a;

.field public final synthetic b:Lp3/a/f$a;


# direct methods
.method public constructor <init>(Le/a/f4/b/h/f$a;Lp3/a/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f4/b/h/f$a$a;->a:Le/a/f4/b/h/f$a;

    iput-object p2, p0, Le/a/f4/b/h/f$a$a;->b:Lp3/a/f$a;

    invoke-direct {p0}, Lp3/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    const-string v0, "<-- "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f4/b/h/f$a$a;->a:Le/a/f4/b/h/f$a;

    iget-object v1, v1, Le/a/f4/b/h/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lp3/a/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lp3/a/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f4/b/h/f$a$a;->b:Lp3/a/f$a;

    return-object v0
.end method
