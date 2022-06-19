.class public final synthetic Le/a/e/c/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/c0/e;


# static fields
.field public static final synthetic a:Le/a/e/c/t0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e/c/t0;

    invoke-direct {v0}, Le/a/e/c/t0;-><init>()V

    sput-object v0, Le/a/e/c/t0;->a:Le/a/e/c/t0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/b/a/c0/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method
