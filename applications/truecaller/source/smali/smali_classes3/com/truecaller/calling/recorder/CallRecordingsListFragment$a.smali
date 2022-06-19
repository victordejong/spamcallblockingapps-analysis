.class public final Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/recorder/CallRecordingsListFragment;->uk(Ljava/lang/String;Ljava/lang/Object;Le/a/h/g/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->a:I

    iput-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->a:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/m;

    iget-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->d:Ljava/lang/Object;

    invoke-interface {p1, p2}, Le/a/h/g/m;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/m;

    iget-object p2, p0, Lcom/truecaller/calling/recorder/CallRecordingsListFragment$a;->d:Ljava/lang/Object;

    invoke-interface {p1, p2}, Le/a/h/g/m;->a(Ljava/lang/Object;)V

    return-void
.end method
