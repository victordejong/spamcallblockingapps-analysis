.class public final synthetic Le/a/a/r0/j$o;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->Vs(ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Le/a/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 7

    const-class v3, Le/a/a/r0/k;

    const/4 v1, 0x0

    const-string v4, "buildFragment"

    const-string v5, "buildFragment(Lcom/truecaller/messaging/data/types/InboxTab;)Lcom/truecaller/messaging/messaginglist/MessagingListFragment;"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/data/types/InboxTab;

    .line 2
    invoke-static {v0}, Le/a/a/r0/k;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Le/a/a/b/a;

    move-result-object v0

    return-object v0
.end method
