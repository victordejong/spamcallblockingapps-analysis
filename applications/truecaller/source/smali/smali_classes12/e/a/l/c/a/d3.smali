.class public final Le/a/l/c/a/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q5/d;


# direct methods
.method public constructor <init>(Le/a/q5/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whatsAppCallerIdManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/d3;->a:Le/a/q5/d;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/c/a/t$n;
    .locals 2

    .line 1
    new-instance v0, Le/a/l/c/a/t$n;

    iget-object v1, p0, Le/a/l/c/a/d3;->a:Le/a/q5/d;

    invoke-interface {v1}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v1

    invoke-virtual {v1}, Le/a/q5/c;->a()Z

    move-result v1

    invoke-direct {v0, v1}, Le/a/l/c/a/t$n;-><init>(Z)V

    return-object v0
.end method
