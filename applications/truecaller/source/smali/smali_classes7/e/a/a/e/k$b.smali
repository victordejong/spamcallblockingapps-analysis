.class public final Le/a/a/e/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Le/a/j2;


# direct methods
.method public constructor <init>(Le/a/a/e/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/a/e/r;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/e/k$b;->a:Le/a/j2;

    const-class v1, Le/a/j2;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Le/a/a/e/k;

    iget-object v1, p0, Le/a/a/e/k$b;->a:Le/a/j2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/e/k;-><init>(Le/a/j2;Le/a/a/e/k$a;)V

    return-object v0
.end method
