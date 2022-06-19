.class public final Le/a/q/h/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/q/h/e;


# direct methods
.method public constructor <init>(Le/a/q/h/e;)V
    .locals 0

    iput-object p1, p0, Le/a/q/h/d;->b:Le/a/q/h/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q/h/d;->b:Le/a/q/h/e;

    .line 2
    iget-object v0, v0, Le/a/q/h/e;->e:Le/a/b0/o/a;

    const/16 v1, 0x32

    const-string v2, "contactFeedbackCommentsPageLimit"

    .line 3
    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
