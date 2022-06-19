.class public final synthetic Ln3/e/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/x0;


# static fields
.field public static final synthetic a:Ln3/e/a/e/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/e/a/e/a;

    invoke-direct {v0}, Ln3/e/a/e/a;-><init>()V

    sput-object v0, Ln3/e/a/e/a;->a:Ln3/e/a/e/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1
.end method
