.class Lorg/joda/time/y/x$c;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final f:Z

.field final synthetic g:Lorg/joda/time/y/x;


# direct methods
.method constructor <init>(Lorg/joda/time/y/x;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/y/x$c;->g:Lorg/joda/time/y/x;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3
    iput-boolean p3, p0, Lorg/joda/time/y/x$c;->f:Z

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

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
    invoke-static {}, Lorg/joda/time/b0/j;->b()Lorg/joda/time/b0/b;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/joda/time/y/x$c;->g:Lorg/joda/time/y/x;

    invoke-virtual {v2}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/b0/b;->q(Lorg/joda/time/a;)Lorg/joda/time/b0/b;

    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lorg/joda/time/y/x$c;->f:Z

    if-eqz v2, :cond_1

    const-string v2, "below the supported minimum of "

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v2, p0, Lorg/joda/time/y/x$c;->g:Lorg/joda/time/y/x;

    invoke-virtual {v2}, Lorg/joda/time/y/x;->a0()Lorg/joda/time/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/x/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/joda/time/b0/b;->m(Ljava/lang/StringBuffer;J)V

    goto :goto_0

    :cond_1
    const-string v2, "above the supported maximum of "

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget-object v2, p0, Lorg/joda/time/y/x$c;->g:Lorg/joda/time/y/x;

    invoke-virtual {v2}, Lorg/joda/time/y/x;->b0()Lorg/joda/time/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/x/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/joda/time/b0/b;->m(Ljava/lang/StringBuffer;J)V

    :goto_0
    const-string v1, " ("

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget-object v1, p0, Lorg/joda/time/y/x$c;->g:Lorg/joda/time/y/x;

    invoke-virtual {v1}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/y/x$c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
