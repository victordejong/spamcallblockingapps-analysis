.class public final Le/a/d/c0/b2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/q/z;

.field public final b:Le/a/b0/q/w;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;Le/a/b0/q/w;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberDomainUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/b2/a;->a:Le/a/b0/q/z;

    iput-object p2, p0, Le/a/d/c0/b2/a;->b:Le/a/b0/q/w;

    return-void
.end method
