.class public final Le/m/a/c/g1/c0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/c0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/c0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Le/m/a/c/q1/t;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/c0/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    iput-object p1, p0, Le/m/a/c/g1/c0/b$b;->c:Le/m/a/c/q1/t;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    invoke-virtual {p1}, Le/m/a/c/q1/t;->t()I

    move-result v0

    iput v0, p0, Le/m/a/c/g1/c0/b$b;->a:I

    .line 5
    invoke-virtual {p1}, Le/m/a/c/q1/t;->t()I

    move-result p1

    iput p1, p0, Le/m/a/c/g1/c0/b$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/g1/c0/b$b;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/c/g1/c0/b$b;->c:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->t()I

    move-result v0

    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/g1/c0/b$b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/g1/c0/b$b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
