.class public Le/m/a/c/p1/h0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/m/a/c/p1/h0/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Ljava/io/File;

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Le/m/a/c/p1/h0/l;->b:J

    .line 4
    iput-wide p4, p0, Le/m/a/c/p1/h0/l;->c:J

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Le/m/a/c/p1/h0/l;->d:Z

    .line 6
    iput-object p8, p0, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    .line 7
    iput-wide p6, p0, Le/m/a/c/p1/h0/l;->f:J

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/p1/h0/l;)I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    iget-object v1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    iget-object p1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-wide v0, p0, Le/m/a/c/p1/h0/l;->b:J

    iget-wide v2, p1, Le/m/a/c/p1/h0/l;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/m/a/c/p1/h0/l;

    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/l;->a(Le/m/a/c/p1/h0/l;)I

    move-result p1

    return p1
.end method
