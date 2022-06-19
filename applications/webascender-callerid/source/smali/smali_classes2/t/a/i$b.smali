.class Lt/a/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lt/a/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lt/a/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
