.class public final Le/m/b/y/a/c/a$c;
.super Le/m/b/x/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/y/a/c/a$c$a;
    }
.end annotation


# instance fields
.field private aperture:Ljava/lang/Float;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private cameraMake:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private cameraModel:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private colorSpace:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private exposureBias:Ljava/lang/Float;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private exposureMode:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private exposureTime:Ljava/lang/Float;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private flashUsed:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private focalLength:Ljava/lang/Float;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private isoSpeed:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private lens:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private location:Le/m/b/y/a/c/a$c$a;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private maxApertureValue:Ljava/lang/Float;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private meteringMode:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private rotation:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private sensor:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private subjectDistance:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private whiteBalance:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Le/m/b/x/d/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c;->l()Le/m/b/y/a/c/a$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c;->l()Le/m/b/y/a/c/a$c;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$c;

    return-object p1
.end method

.method public bridge synthetic i()Le/m/b/x/c/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$c;->l()Le/m/b/y/a/c/a$c;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$c;

    return-object p1
.end method

.method public l()Le/m/b/y/a/c/a$c;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    check-cast v0, Le/m/b/y/a/c/a$c;

    return-object v0
.end method
