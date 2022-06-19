.class public final Le/a/a/y0/a0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/y0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/y0/a0;

    invoke-direct {v0}, Le/a/a/y0/a0;-><init>()V

    sput-object v0, Le/a/a/y0/a0;->b:Le/a/a/y0/a0;

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
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "it.normalizedAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
