.class public final synthetic Lcom/hiya/stingray/ui/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# static fields
.field public static final synthetic a:Lcom/hiya/stingray/ui/common/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/common/d;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/common/d;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/common/d;->a:Lcom/hiya/stingray/ui/common/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/i;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/hiya/stingray/ui/common/e;->E(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
