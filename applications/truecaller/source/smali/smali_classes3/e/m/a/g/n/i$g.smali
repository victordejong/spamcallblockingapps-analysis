.class public Le/m/a/g/n/i$g;
.super Le/m/a/g/n/i$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic e:Le/m/a/g/n/i;


# direct methods
.method public constructor <init>(Le/m/a/g/n/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/m/a/g/n/i$g;->e:Le/m/a/g/n/i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/m/a/g/n/i$h;-><init>(Le/m/a/g/n/i;Le/m/a/g/n/g;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/n/i$g;->e:Le/m/a/g/n/i;

    iget v0, v0, Le/m/a/g/n/i;->h:F

    return v0
.end method
