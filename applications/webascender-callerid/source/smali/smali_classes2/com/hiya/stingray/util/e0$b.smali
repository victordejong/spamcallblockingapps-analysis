.class final Lcom/hiya/stingray/util/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/util/e0;->b(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroidx/appcompat/app/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/util/e0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/util/e0$b;

    invoke-direct {v0}, Lcom/hiya/stingray/util/e0$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/util/e0$b;->f:Lcom/hiya/stingray/util/e0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
