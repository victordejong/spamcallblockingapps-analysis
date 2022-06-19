.class public final Le/a/b0/n/d$b;
.super Le/a/b0/n/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lu3/j0;

.field public final b:Lcom/truecaller/common/profile/ImageSource;


# direct methods
.method public constructor <init>(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)V
    .locals 1

    const-string v0, "requestBody"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/b0/n/d;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/b0/n/d$b;->a:Lu3/j0;

    iput-object p2, p0, Le/a/b0/n/d$b;->b:Lcom/truecaller/common/profile/ImageSource;

    return-void
.end method
