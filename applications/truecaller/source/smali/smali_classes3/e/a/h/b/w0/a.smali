.class public final Le/a/h/b/w0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callHistoryManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/w0/a;->a:Le/a/r2/f;

    return-void
.end method
