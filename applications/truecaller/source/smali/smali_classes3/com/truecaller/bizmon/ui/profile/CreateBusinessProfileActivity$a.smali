.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->C9(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

.field public static final c:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->b:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    new-instance v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->c:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a;->a:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
