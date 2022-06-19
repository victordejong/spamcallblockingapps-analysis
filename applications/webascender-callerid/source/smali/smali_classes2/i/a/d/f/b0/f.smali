.class public final Li/a/d/f/b0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li/a/d/f/b0/h;

.field private b:Li/a/d/f/b0/h;

.field private c:Li/a/d/f/b0/h;

.field private d:Li/a/d/f/b0/h;

.field private e:Li/a/d/f/b0/h;


# direct methods
.method constructor <init>(Li/a/d/f/b0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/f/b0/f;->a:Li/a/d/f/b0/h;

    return-void
.end method


# virtual methods
.method public a()Li/a/d/f/b0/h;
    .locals 7

    .line 1
    new-instance v6, Li/a/d/f/b0/e;

    iget-object v1, p0, Li/a/d/f/b0/f;->a:Li/a/d/f/b0/h;

    iget-object v2, p0, Li/a/d/f/b0/f;->b:Li/a/d/f/b0/h;

    iget-object v3, p0, Li/a/d/f/b0/f;->c:Li/a/d/f/b0/h;

    iget-object v4, p0, Li/a/d/f/b0/f;->d:Li/a/d/f/b0/h;

    iget-object v5, p0, Li/a/d/f/b0/f;->e:Li/a/d/f/b0/h;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li/a/d/f/b0/e;-><init>(Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;)V

    return-object v6
.end method
