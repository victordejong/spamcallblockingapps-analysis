.class public final synthetic Le/a/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/CallMeBackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/CallMeBackActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/h;->a:Lcom/truecaller/ui/CallMeBackActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/a/e/h;->a:Lcom/truecaller/ui/CallMeBackActivity;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ui/CallMeBackActivity;->sa()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/ui/CallMeBackActivity;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
