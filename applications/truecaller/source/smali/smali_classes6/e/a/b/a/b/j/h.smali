.class public final Le/a/b/a/b/j/h;
.super Ln3/b0/a/h$b;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "oldImages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newImages"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/b0/a/h$b;-><init>()V

    iput-object p1, p0, Le/a/b/a/b/j/h;->a:[Ljava/lang/String;

    iput-object p2, p0, Le/a/b/a/b/j/h;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/h;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Le/a/b/a/b/j/h;->b:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/h;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/h;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
