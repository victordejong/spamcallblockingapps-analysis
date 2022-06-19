.class public final Le/a/c/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/c/d/c;

.field public final b:Le/a/c/w/o0/b;


# direct methods
.method public constructor <init>(Le/a/c/c/d/c;Le/a/c/w/o0/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountModelDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderFilterManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/b;->a:Le/a/c/c/d/c;

    iput-object p2, p0, Le/a/c/a0/b;->b:Le/a/c/w/o0/b;

    return-void
.end method
