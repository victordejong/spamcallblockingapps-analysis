.class final Li/a/a/e/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/a/e/c$c$b;,
        Li/a/a/e/c$c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li/a/a/e/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/a/e/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li/a/a/e/m/d;)Li/a/a/e/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/a/e/c$c;->b(Li/a/a/e/m/d;)Li/a/a/e/c$c$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Li/a/a/e/m/d;)Li/a/a/e/c$c$a;
    .locals 1

    const-string v0, "labels"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object p1, Li/a/a/e/c$c$a;->INSTANCE:Li/a/a/e/c$c$a;

    return-object p1
.end method
