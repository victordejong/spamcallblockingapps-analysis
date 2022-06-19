.class public final Lg/f/c/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final b:[B

.field private final c:Lg/f/c/a/f0/t0;

.field private final d:Lg/f/c/a/f0/c1;


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLg/f/c/a/f0/t0;Lg/f/c/a/f0/c1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lg/f/c/a/f0/t0;",
            "Lg/f/c/a/f0/c1;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/q$a;->a:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/q$a;->b:[B

    .line 4
    iput-object p3, p0, Lg/f/c/a/q$a;->c:Lg/f/c/a/f0/t0;

    .line 5
    iput-object p4, p0, Lg/f/c/a/q$a;->d:Lg/f/c/a/f0/c1;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/c/a/q$a;->b:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lg/f/c/a/f0/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/q$a;->d:Lg/f/c/a/f0/c1;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/q$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Lg/f/c/a/f0/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/q$a;->c:Lg/f/c/a/f0/t0;

    return-object v0
.end method
