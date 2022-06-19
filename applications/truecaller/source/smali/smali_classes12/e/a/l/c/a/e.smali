.class public final Le/a/l/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/s2/c;


# direct methods
.method public constructor <init>(Le/a/s2/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "announceCallerIdManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/e;->a:Le/a/s2/c;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/c/a/t$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/e;->a:Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->m()Z

    move-result v0

    .line 2
    new-instance v1, Le/a/l/c/a/t$a;

    invoke-direct {v1, v0}, Le/a/l/c/a/t$a;-><init>(Z)V

    return-object v1
.end method
