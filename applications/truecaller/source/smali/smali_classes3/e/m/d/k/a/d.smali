.class public final synthetic Le/m/d/k/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/s/b;


# static fields
.field public static final synthetic a:Le/m/d/k/a/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/k/a/d;

    invoke-direct {v0}, Le/m/d/k/a/d;-><init>()V

    sput-object v0, Le/m/d/k/a/d;->a:Le/m/d/k/a/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/s/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
