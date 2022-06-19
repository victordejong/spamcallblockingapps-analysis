.class public abstract Le/a/i/c/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/a/c;


# instance fields
.field public final a:Le/a/i/c/a/a0;

.field public final b:Ljava/lang/String;

.field public final c:Le/a/i/c/a/u;

.field public final d:Ljava/lang/String;

.field public final e:Le/a/i/c/a/b;


# direct methods
.method public constructor <init>(Le/a/i/c/a/b;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    .line 2
    invoke-interface {p1}, Le/a/i/c/a/b;->d()Le/a/i/c/a/a0;

    move-result-object v0

    iput-object v0, p0, Le/a/i/c/a/i;->a:Le/a/i/c/a/a0;

    .line 3
    iget-object v1, v0, Le/a/i/c/a/a0;->a:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Le/a/i/c/a/a0;->c:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Le/a/i/c/a/i;->b:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Le/a/i/c/a/b;->b()Le/a/i/c/a/u;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/a/i;->c:Le/a/i/c/a/u;

    .line 7
    iget-object p1, v0, Le/a/i/c/a/a0;->d:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Le/a/i/c/a/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Le/a/i/c/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/i;->c:Le/a/i/c/a/u;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/i;->b:Ljava/lang/String;

    return-object v0
.end method
