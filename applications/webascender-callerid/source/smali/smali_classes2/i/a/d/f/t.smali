.class public final Li/a/d/f/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 2
    iput v0, p0, Li/a/d/f/t;->a:I

    .line 3
    iput v0, p0, Li/a/d/f/t;->b:I

    .line 4
    iput v0, p0, Li/a/d/f/t;->c:I

    .line 5
    iput v0, p0, Li/a/d/f/t;->d:I

    .line 6
    iput v0, p0, Li/a/d/f/t;->e:I

    return-void
.end method


# virtual methods
.method public a()Li/a/d/f/s;
    .locals 5

    .line 1
    iget v0, p0, Li/a/d/f/t;->a:I

    iget v1, p0, Li/a/d/f/t;->b:I

    iget v2, p0, Li/a/d/f/t;->c:I

    iget v3, p0, Li/a/d/f/t;->d:I

    iget v4, p0, Li/a/d/f/t;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Li/a/d/f/s;->a(IIIII)Li/a/d/f/s;

    move-result-object v0

    return-object v0
.end method
