.class final Li/a/a/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Li/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/g<",
            "Li/a/a/f/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opentelemetry-trace-span-key"

    .line 1
    invoke-static {v0}, Li/a/b/f;->a(Ljava/lang/String;)Li/a/b/g;

    move-result-object v0

    sput-object v0, Li/a/a/f/o;->a:Li/a/b/g;

    return-void
.end method
