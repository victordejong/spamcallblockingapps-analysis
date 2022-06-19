.class public abstract Le/a/r/z/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/z/o$b;,
        Le/a/r/z/o$f;,
        Le/a/r/z/o$g;,
        Le/a/r/z/o$i;,
        Le/a/r/z/o$h;,
        Le/a/r/z/o$a;,
        Le/a/r/z/o$j;,
        Le/a/r/z/o$c;,
        Le/a/r/z/o$e;,
        Le/a/r/z/o$k;,
        Le/a/r/z/o$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const p4, 0x104000a

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/o;->a:Ljava/lang/String;

    iput p2, p0, Le/a/r/z/o;->b:I

    iput-object p3, p0, Le/a/r/z/o;->c:Ljava/lang/String;

    iput p4, p0, Le/a/r/z/o;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/o;->a:Ljava/lang/String;

    iput p2, p0, Le/a/r/z/o;->b:I

    iput-object p3, p0, Le/a/r/z/o;->c:Ljava/lang/String;

    iput p4, p0, Le/a/r/z/o;->d:I

    return-void
.end method
