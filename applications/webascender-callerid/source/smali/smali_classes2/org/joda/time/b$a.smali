.class public final Lorg/joda/time/b$a;
.super Lorg/joda/time/a0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private f:Lorg/joda/time/b;

.field private g:Lorg/joda/time/c;


# direct methods
.method constructor <init>(Lorg/joda/time/b;Lorg/joda/time/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    .line 3
    iput-object p2, p0, Lorg/joda/time/b$a;->g:Lorg/joda/time/c;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/b;

    iput-object v0, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/joda/time/d;

    .line 3
    iget-object v0, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    invoke-virtual {v0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/b$a;->g:Lorg/joda/time/c;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/joda/time/b$a;->g:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected e()Lorg/joda/time/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    invoke-virtual {v0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b$a;->g:Lorg/joda/time/c;

    return-object v0
.end method

.method protected j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/b$a;->f:Lorg/joda/time/b;

    invoke-virtual {v0}, Lorg/joda/time/x/d;->e()J

    move-result-wide v0

    return-wide v0
.end method
