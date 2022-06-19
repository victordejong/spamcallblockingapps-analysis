.class public final Le/f/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/f;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:I

.field public final c:Le/f/a/n/f;


# direct methods
.method public constructor <init>(ILe/f/a/n/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/f/a/s/a;->b:I

    .line 3
    iput-object p2, p0, Le/f/a/s/a;->c:Le/f/a/n/f;

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/s/a;->c:Le/f/a/n/f;

    invoke-interface {v0, p1}, Le/f/a/n/f;->b(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/s/a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/a/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/s/a;

    .line 3
    iget v0, p0, Le/f/a/s/a;->b:I

    iget v2, p1, Le/f/a/s/a;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/s/a;->c:Le/f/a/n/f;

    iget-object p1, p1, Le/f/a/s/a;->c:Le/f/a/n/f;

    invoke-interface {v0, p1}, Le/f/a/n/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/s/a;->c:Le/f/a/n/f;

    iget v1, p0, Le/f/a/s/a;->b:I

    invoke-static {v0, v1}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method
