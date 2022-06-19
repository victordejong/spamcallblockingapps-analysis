.class public final Le/a/a/r0/d$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/d;->b(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        "Ls1/e0/k<",
        "+",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/r0/d$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/r0/d$e;

    invoke-direct {v0}, Le/a/a/r0/d$e;-><init>()V

    sput-object v0, Le/a/a/r0/d$e;->b:Le/a/a/r0/d$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "it.participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object p1

    return-object p1
.end method
