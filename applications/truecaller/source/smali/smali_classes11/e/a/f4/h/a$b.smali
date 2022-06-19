.class public Le/a/f4/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "CONTACT_ID"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "TCBID"
    .end annotation
.end field

.field public c:Z
    .annotation runtime Le/m/e/d0/b;
        value = "VCARD_STORED"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/f4/h/a$b;->b:Ljava/lang/String;

    return-void
.end method
