.class public abstract Le/a/h0/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/a/v$a;,
        Le/a/h0/a/v$j;,
        Le/a/h0/a/v$i;,
        Le/a/h0/a/v$f;,
        Le/a/h0/a/v$h;,
        Le/a/h0/a/v$k;,
        Le/a/h0/a/v$g;,
        Le/a/h0/a/v$e;,
        Le/a/h0/a/v$b;,
        Le/a/h0/a/v$c;
    }
.end annotation


# static fields
.field public static final g:Ls1/g;

.field public static final h:Le/a/h0/a/v;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/Integer;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/h0/a/v$d;->b:Le/a/h0/a/v$d;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/h0/a/v;->g:Ls1/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;IIZZI)V
    .locals 2

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p5, v1

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move p6, v1

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/v;->a:Ljava/lang/Integer;

    iput-object p2, p0, Le/a/h0/a/v;->b:Ljava/lang/Integer;

    iput p3, p0, Le/a/h0/a/v;->c:I

    iput p4, p0, Le/a/h0/a/v;->d:I

    iput-boolean p5, p0, Le/a/h0/a/v;->e:Z

    iput-boolean p6, p0, Le/a/h0/a/v;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;IIZZLs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/v;->a:Ljava/lang/Integer;

    iput-object p2, p0, Le/a/h0/a/v;->b:Ljava/lang/Integer;

    iput p3, p0, Le/a/h0/a/v;->c:I

    iput p4, p0, Le/a/h0/a/v;->d:I

    iput-boolean p5, p0, Le/a/h0/a/v;->e:Z

    iput-boolean p6, p0, Le/a/h0/a/v;->f:Z

    return-void
.end method
