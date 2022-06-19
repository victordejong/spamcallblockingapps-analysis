.class public final Landroidx/camera/view/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PreviewView:[I

.field public static final PreviewView_implementationMode:I = 0x0

.field public static final PreviewView_scaleType:I = 0x1

.field public static final PreviewView_type:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/camera/view/R$styleable;->PreviewView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04030e
        0x7f0404bd
        0x7f040780
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
