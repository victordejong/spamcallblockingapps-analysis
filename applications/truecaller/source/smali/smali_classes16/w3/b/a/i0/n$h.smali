.class public Lw3/b/a/i0/n$h;
.super Lw3/b/a/i0/n$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/i0/n$d;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 10

    .line 1
    iget-object v6, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v9, p2

    :goto_0
    if-ge v9, v8, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v9

    move-object v3, v6

    move v5, v7

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v7, p1, v9}, Lw3/b/a/i0/n$d;->g(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v9

    .line 6
    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    not-int p1, p2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)I
    .locals 7

    .line 1
    iget-object v3, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v6

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v6, p1, p2}, Lw3/b/a/i0/n$d;->g(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    add-int/2addr p2, v6

    return p2

    :cond_0
    not-int p1, p2

    return p1
.end method

.method public c(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public d(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public e()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lw3/b/a/i0/n$h;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
