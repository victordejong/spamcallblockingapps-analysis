.class final Li/a/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li/a/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/a/a/f/a;->a(Ljava/util/List;)Li/a/a/f/a;

    move-result-object v0

    sput-object v0, Li/a/a/f/b;->a:Li/a/a/f/a;

    return-void
.end method

.method static a()Li/a/a/f/w;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/b;->a:Li/a/a/f/a;

    return-object v0
.end method
