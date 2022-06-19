.class Lcom/hiya/stingray/t/i1/a1$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/t/i1/a1;->d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/t/i1/a1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/t/i1/a1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/a1$a;->f:Lcom/hiya/stingray/t/i1/a1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/t/i1/a1;->a(Lcom/hiya/stingray/t/i1/a1;)Lcom/hiya/stingray/manager/s2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/s2;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uxlocation"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
