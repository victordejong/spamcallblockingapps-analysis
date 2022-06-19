.class public final Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;->kl(ILjava/util/SortedSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$c;->a:Ljava/util/SortedSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment$c;->a:Ljava/util/SortedSet;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
