.class public Lw3/b/a/f0/w$c;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final synthetic b:Lw3/b/a/f0/w;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/w;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw3/b/a/f0/w$c;->b:Lw3/b/a/f0/w;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3
    iput-boolean p3, p0, Lw3/b/a/f0/w$c;->a:Z

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x55

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "The"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x20

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " instant is "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    sget-object v1, Lw3/b/a/i0/i;->E:Lw3/b/a/i0/b;

    .line 8
    iget-object v2, p0, Lw3/b/a/f0/w$c;->b:Lw3/b/a/f0/w;

    .line 9
    iget-object v2, v2, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 10
    invoke-virtual {v1, v2}, Lw3/b/a/i0/b;->l(Lw3/b/a/a;)Lw3/b/a/i0/b;

    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lw3/b/a/f0/w$c;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "below the supported minimum of "

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget-object v2, p0, Lw3/b/a/f0/w$c;->b:Lw3/b/a/f0/w;

    .line 14
    iget-object v2, v2, Lw3/b/a/f0/w;->Q:Lw3/b/a/b;

    .line 15
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 16
    :try_start_0
    invoke-virtual {v1, v0, v4, v5, v3}, Lw3/b/a/i0/b;->h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v2, "above the supported maximum of "

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget-object v2, p0, Lw3/b/a/f0/w$c;->b:Lw3/b/a/f0/w;

    .line 19
    iget-object v2, v2, Lw3/b/a/f0/w;->R:Lw3/b/a/b;

    .line 20
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 21
    :try_start_1
    invoke-virtual {v1, v0, v4, v5, v3}, Lw3/b/a/i0/b;->h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    const-string v1, " ("

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v1, p0, Lw3/b/a/f0/w$c;->b:Lw3/b/a/f0/w;

    .line 24
    iget-object v1, v1, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "IllegalArgumentException: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lw3/b/a/f0/w$c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
