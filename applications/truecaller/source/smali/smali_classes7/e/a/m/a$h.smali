.class public final Le/a/m/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/a;->L7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/m/a;


# direct methods
.method public constructor <init>(Le/a/m/a;)V
    .locals 0

    iput-object p1, p0, Le/a/m/a$h;->a:Le/a/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/m/a$h;->a:Le/a/m/a;

    invoke-virtual {p1}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object p1

    check-cast p1, Le/a/m/v;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m/s;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/m/s;->qg()V

    :cond_0
    return-void
.end method
