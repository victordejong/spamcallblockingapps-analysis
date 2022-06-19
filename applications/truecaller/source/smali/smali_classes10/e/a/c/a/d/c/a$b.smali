.class public final Le/a/c/a/d/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Le/a/c/a/d/c/c;

.field public b:Le/a/c/l/a/a;

.field public c:Le/a/c/h/k/a;

.field public d:Le/a/b0/c;

.field public e:Le/a/b0/m/b/a;


# direct methods
.method public constructor <init>(Le/a/c/a/d/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/c/a/d/c/b;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/c/a/d/c/a$b;->a:Le/a/c/a/d/c/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/a/c/a/d/c/c;

    invoke-direct {v0}, Le/a/c/a/d/c/c;-><init>()V

    iput-object v0, p0, Le/a/c/a/d/c/a$b;->a:Le/a/c/a/d/c/c;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/c/a/d/c/a$b;->b:Le/a/c/l/a/a;

    const-class v1, Le/a/c/l/a/a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Le/a/c/a/d/c/a$b;->c:Le/a/c/h/k/a;

    const-class v1, Le/a/c/h/k/a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Le/a/c/a/d/c/a$b;->d:Le/a/b0/c;

    const-class v1, Le/a/b0/c;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/d/c/a$b;->e:Le/a/b0/m/b/a;

    const-class v1, Le/a/b0/m/b/a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v0, Le/a/c/a/d/c/a;

    iget-object v3, p0, Le/a/c/a/d/c/a$b;->a:Le/a/c/a/d/c/c;

    iget-object v4, p0, Le/a/c/a/d/c/a$b;->b:Le/a/c/l/a/a;

    iget-object v5, p0, Le/a/c/a/d/c/a$b;->c:Le/a/c/h/k/a;

    iget-object v6, p0, Le/a/c/a/d/c/a$b;->d:Le/a/b0/c;

    iget-object v7, p0, Le/a/c/a/d/c/a$b;->e:Le/a/b0/m/b/a;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le/a/c/a/d/c/a;-><init>(Le/a/c/a/d/c/c;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/b0/m/b/a;Le/a/c/a/d/c/a$a;)V

    return-object v0
.end method
