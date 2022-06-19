.class public final Le/a/c/a/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/c/r/j/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/c/r/j/a;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionData"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/l/c;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    invoke-virtual {v0}, Le/a/c/r/j/a;->a()Le/a/c/r/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/c/r/j/c;->d()V

    :cond_0
    return-void
.end method
