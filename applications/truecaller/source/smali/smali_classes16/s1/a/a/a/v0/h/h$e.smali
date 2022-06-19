.class public final Ls1/a/a/a/v0/h/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/h/g$a<",
        "Ls1/a/a/a/v0/h/h$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/h/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/i$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ls1/a/a/a/v0/h/y;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/i$b;ILs1/a/a/a/v0/h/y;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/h/i$b<",
            "*>;I",
            "Ls1/a/a/a/v0/h/y;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$e;->a:Ls1/a/a/a/v0/h/i$b;

    .line 3
    iput p2, p0, Ls1/a/a/a/v0/h/h$e;->b:I

    .line 4
    iput-object p3, p0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 5
    iput-boolean p4, p0, Ls1/a/a/a/v0/h/h$e;->d:Z

    .line 6
    iput-boolean p5, p0, Ls1/a/a/a/v0/h/h$e;->e:Z

    return-void
.end method


# virtual methods
.method public E1(Ls1/a/a/a/v0/h/p$a;Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/p$a;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/h/h$b;

    check-cast p2, Ls1/a/a/a/v0/h/h;

    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/h/h$b;->e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/h/h$e;

    .line 2
    iget v0, p0, Ls1/a/a/a/v0/h/h$e;->b:I

    iget p1, p1, Ls1/a/a/a/v0/h/h$e;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getLiteJavaType()Ls1/a/a/a/v0/h/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    return-object v0
.end method

.method public getLiteType()Ls1/a/a/a/v0/h/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/h$e;->b:I

    return v0
.end method

.method public isPacked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/h/h$e;->e:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/h/h$e;->d:Z

    return v0
.end method
