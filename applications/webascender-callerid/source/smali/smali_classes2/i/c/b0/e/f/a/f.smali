.class public final Li/c/b0/e/f/a/f;
.super Li/c/b0/b/e;
.source "SourceFile"


# instance fields
.field final f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/f;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/f;->f:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Li/c/b0/e/a/d;->error(Ljava/lang/Throwable;Li/c/b0/b/g;)V

    return-void
.end method
