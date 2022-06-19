.class public final Lw3/b/a/b$a;
.super Lw3/b/a/h0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lw3/b/a/b;

.field public b:Lw3/b/a/c;


# direct methods
.method public constructor <init>(Lw3/b/a/b;Lw3/b/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/h0/a;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    .line 3
    iput-object p2, p0, Lw3/b/a/b$a;->b:Lw3/b/a/c;

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

    check-cast v0, Lw3/b/a/b;

    iput-object v0, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/b/a/d;

    .line 3
    iget-object v0, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    .line 4
    iget-object v0, v0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 5
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/b$a;->b:Lw3/b/a/c;

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
    iget-object v0, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lw3/b/a/b$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    .line 2
    iget-object v0, v0, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    return-object v0
.end method

.method public f()Lw3/b/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/b$a;->b:Lw3/b/a/c;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/b$a;->a:Lw3/b/a/b;

    .line 2
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    return-wide v0
.end method
