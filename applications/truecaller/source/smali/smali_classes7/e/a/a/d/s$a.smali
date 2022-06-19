.class public final Le/a/a/d/s$a;
.super Le/a/a/d/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/ImGroupInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
    .locals 1

    const-string v0, "imGroupInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a/d/s;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/a/d/s$a;->a:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    return-void
.end method
