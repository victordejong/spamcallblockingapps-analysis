.class public final Le/a/e/b/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/e;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/e/b/j/e;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/e/b/j/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Le/a/e/b/j/k;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p2, p1}, Le/a/e/b/j/k;-><init>(Le/a/e/b/j/l;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
